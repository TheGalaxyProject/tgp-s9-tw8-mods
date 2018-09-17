.class public Lcom/android/systemui/wallpaper/theme/particle/Flower;
.super Ljava/lang/Object;
.source "Flower.java"


# instance fields
.field public cx:F

.field public cy:F

.field public flowerKind:I

.field public flowerSize:I

.field private mContext:Landroid/content/Context;

.field private mRandom:Ljava/util/Random;

.field private mXSpeed:I

.field private mYSpeed:I

.field public rotate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerKind:I

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerSize:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mXSpeed:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mYSpeed:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerKind:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerSize:I

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    return-void
.end method

.method public isVisible()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_23

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_23

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public next()V
    .registers 3

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mXSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Flower;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Flower;->clear()V

    :cond_1f
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    const/16 v1, 0x168

    if-lt v0, v1, :cond_28

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    :cond_28
    return-void
.end method
