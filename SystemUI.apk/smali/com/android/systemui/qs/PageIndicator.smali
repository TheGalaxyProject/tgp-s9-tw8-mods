.class public Lcom/android/systemui/qs/PageIndicator;
.super Landroid/view/ViewGroup;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PageIndicator$1;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/PageIndicator;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/PageIndicator;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/PageIndicator;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    new-instance v0, Lcom/android/systemui/qs/PageIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PageIndicator$1;-><init>(Lcom/android/systemui/qs/PageIndicator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    return-void
.end method

.method private animate(II)V
    .registers 15

    const/4 v11, 0x1

    const/4 v10, 0x0

    shr-int/lit8 v2, p1, 0x1

    shr-int/lit8 v7, p2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_30

    const/4 v3, 0x1

    :goto_e
    if-eqz v3, :cond_34

    if-le p1, p2, :cond_32

    :goto_12
    const/4 v4, 0x1

    :goto_13
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ne v6, v1, :cond_1f

    add-int/lit8 v6, v6, 0x1

    :cond_1f
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v0, :cond_2f

    if-nez v5, :cond_37

    :cond_2f
    return-void

    :cond_30
    const/4 v3, 0x0

    goto :goto_e

    :cond_32
    const/4 v4, 0x0

    goto :goto_13

    :cond_34
    if-ge p1, p2, :cond_32

    goto :goto_12

    :cond_37
    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v8

    invoke-virtual {v5}, Landroid/widget/ImageView;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    invoke-direct {p0, v3, v4, v10}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result v8

    invoke-direct {p0, v0, v8}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    invoke-direct {p0, v10}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-direct {p0, v3, v4, v11}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    invoke-direct {p0, v11}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    iput-boolean v11, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    return-void
.end method

.method private getAlpha(Z)F
    .registers 3

    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    return v0

    :cond_5
    const v0, 0x3e99999a    # 0.3f

    goto :goto_4
.end method

.method private getTransition(ZZZ)I
    .registers 5

    if-eqz p3, :cond_18

    if-eqz p1, :cond_e

    if-eqz p2, :cond_a

    const v0, 0x7f080422

    return v0

    :cond_a
    const v0, 0x7f080424

    return v0

    :cond_e
    if-eqz p2, :cond_14

    const v0, 0x7f080420

    return v0

    :cond_14
    const v0, 0x7f080426

    return v0

    :cond_18
    if-eqz p1, :cond_24

    if-eqz p2, :cond_20

    const v0, 0x7f08042c

    return v0

    :cond_20
    const v0, 0x7f08042a

    return v0

    :cond_24
    if-eqz p2, :cond_2a

    const v0, 0x7f08042e

    return v0

    :cond_2a
    const v0, 0x7f080428

    return v0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/qs/PageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setIndex(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_26

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    const v3, 0x7f08041f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne v1, p1, :cond_24

    const/4 v3, 0x1

    :goto_1a
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_24
    const/4 v3, 0x0

    goto :goto_1a

    :cond_26
    return-void
.end method

.method private setPosition(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->animate(II)V

    :goto_15
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    return-void

    :cond_18
    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    goto :goto_15
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 13

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_21

    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr v3, v4

    mul-int v2, v3, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_21
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_c
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v0, :cond_25

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_25
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr v5, v6

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    add-int v3, v5, v6

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/PageIndicator;->setMeasuredDimension(II)V

    return-void
.end method
