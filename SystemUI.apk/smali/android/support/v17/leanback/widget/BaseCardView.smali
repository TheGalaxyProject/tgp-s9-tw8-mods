.class public Landroid/support/v17/leanback/widget/BaseCardView;
.super Landroid/widget/FrameLayout;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/BaseCardView$1;,
        Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    }
.end annotation


# static fields
.field private static final LB_PRESSED_STATE_SET:[I


# instance fields
.field private final mActivatedAnimDuration:I

.field private mAnim:Landroid/view/animation/Animation;

.field private final mAnimationTrigger:Ljava/lang/Runnable;

.field private mCardType:I

.field private mDelaySelectedAnim:Z

.field mExtraViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraVisibility:I

.field mInfoAlpha:F

.field mInfoOffset:F

.field mInfoViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mInfoVisFraction:F

.field private mInfoVisibility:I

.field private mMainViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private final mSelectedAnimDuration:I

.field private mSelectedAnimationDelay:I


# direct methods
.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/BaseCardView;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v17/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroid/support/v17/leanback/R$attr;->baseCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Landroid/support/v17/leanback/widget/BaseCardView$1;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/BaseCardView$1;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    sget-object v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_12
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardForeground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_26
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_infoVisibility:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_extraVisibility:I

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ge v3, v4, :cond_4d

    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    :cond_4d
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_selectedAnimationDelay:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$integer;->lb_card_selected_animation_delay:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_selectedAnimationDuration:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$integer;->lb_card_selected_animation_duration:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_activatedAnimationDuration:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$integer;->lb_card_activated_animation_duration:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mActivatedAnimDuration:I
    :try_end_83
    .catchall {:try_start_12 .. :try_end_83} :catchall_ad

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getFinalInfoVisFraction()F

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getFinalInfoAlpha()F

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    return-void

    :catchall_ad
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method private animateInfoAlpha(Z)V
    .registers 8

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1d
    if-eqz p1, :cond_28

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_21
    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2a

    return-void

    :cond_28
    const/4 v1, 0x0

    goto :goto_21

    :cond_2a
    new-instance v3, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    if-eqz p1, :cond_59

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_32
    invoke-direct {v3, p0, v4, v2}, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mActivatedAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v3, Landroid/support/v17/leanback/widget/BaseCardView$4;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/BaseCardView$4;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_59
    const/4 v2, 0x0

    goto :goto_32
.end method

.method private animateInfoHeight(Z)V
    .registers 8

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    if-eqz p1, :cond_1d

    const/4 v1, 0x0

    :goto_6
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    if-eqz p1, :cond_28

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_21
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2a

    return-void

    :cond_28
    const/4 v2, 0x0

    goto :goto_21

    :cond_2a
    new-instance v3, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    invoke-direct {v3, p0, v4, v2}, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v4, Landroid/support/v17/leanback/widget/BaseCardView$3;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/BaseCardView$3;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private applyActiveState(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->isRegionVisible(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    :cond_14
    return-void
.end method

.method private applySelectedState(Z)V
    .registers 6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    if-eqz p1, :cond_22

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v17/leanback/widget/BaseCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoOffset(Z)V

    goto :goto_18

    :cond_27
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    goto :goto_18
.end method

.method private cancelAnimations()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->clearAnimation()V

    :cond_f
    return-void
.end method

.method private findChildrenViews()V
    .registers 11

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v6

    if-eqz v6, :cond_3c

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    invoke-direct {p0, v6}, Landroid/support/v17/leanback/widget/BaseCardView;->isCurrentRegionVisible(I)Z

    move-result v4

    :goto_22
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v6

    if-eqz v6, :cond_3e

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_3e

    const/4 v2, 0x1

    :goto_30
    const/4 v3, 0x0

    :goto_31
    if-ge v3, v1, :cond_7a

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/BaseCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_40

    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_3c
    const/4 v4, 0x0

    goto :goto_22

    :cond_3e
    const/4 v2, 0x0

    goto :goto_30

    :cond_40
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    iget v6, v5, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_5e

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_5c

    move v6, v7

    :goto_58
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39

    :cond_5c
    move v6, v8

    goto :goto_58

    :cond_5e
    iget v6, v5, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_71

    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_6f

    move v6, v7

    :goto_6b
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39

    :cond_6f
    move v6, v8

    goto :goto_6b

    :cond_71
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39

    :cond_7a
    return-void
.end method

.method private hasExtraRegion()Z
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private hasInfoRegion()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private isCurrentRegionVisible(I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_20

    return v1

    :pswitch_6
    return v0

    :pswitch_7
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    return v0

    :pswitch_c
    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1b
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    return v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method private isRegionVisible(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_12

    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_7
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    return v0

    :pswitch_c
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method private setInfoViewVisibility(Z)V
    .registers 8

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_54

    if-eqz p1, :cond_22

    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_50
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    :cond_53
    :goto_53
    return-void

    :cond_54
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-ne v1, v5, :cond_7c

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v1, v5, :cond_60

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoHeight(Z)V

    goto :goto_53

    :cond_60
    const/4 v0, 0x0

    :goto_61
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_7a

    move v2, v3

    :goto_74
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_7a
    move v2, v4

    goto :goto_74

    :cond_7c
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_53

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoAlpha(Z)V

    goto :goto_53
.end method


# virtual methods
.method animateInfoOffset(Z)V
    .registers 10

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_35

    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_35
    new-instance v6, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;

    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    if-eqz p1, :cond_63

    :goto_3b
    int-to-float v5, v0

    invoke-direct {v6, p0, v7, v5}, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v6, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v6, Landroid/support/v17/leanback/widget/BaseCardView$2;

    invoke-direct {v6, p0}, Landroid/support/v17/leanback/widget/BaseCardView$2;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_63
    move v0, v5

    goto :goto_3b
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .registers 3

    const/4 v1, -0x2

    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .registers 3

    instance-of v0, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    check-cast p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;)V

    return-object v0

    :cond_c
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method final getFinalInfoAlpha()F
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_13
.end method

.method final getFinalInfoVisFraction()F
    .registers 3

    const/4 v1, 0x2

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-ne v0, v1, :cond_13

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_12
.end method

.method protected onCreateDrawableState(I)[I
    .registers 9

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v4

    array-length v0, v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1d

    aget v5, v4, v2

    const v6, 0x10100a7

    if-ne v5, v6, :cond_12

    const/4 v3, 0x1

    :cond_12
    aget v5, v4, v2

    const v6, 0x101009e

    if-ne v5, v6, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    if-eqz v3, :cond_24

    if-eqz v1, :cond_24

    sget-object v5, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    return-object v5

    :cond_24
    if-eqz v3, :cond_29

    sget-object v5, Landroid/support/v17/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-object v5

    :cond_29
    if-eqz v1, :cond_2e

    sget-object v5, Landroid/view/View;->ENABLED_STATE_SET:[I

    return-object v5

    :cond_2e
    sget-object v5, Landroid/view/View;->EMPTY_STATE_SET:[I

    return-object v5
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 17

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingTop()I

    move-result v7

    int-to-float v0, v7

    const/4 v2, 0x0

    :goto_6
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3d

    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3a

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    float-to-int v8, v0

    iget v9, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v0, v7

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_3d
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v7

    if-eqz v7, :cond_fe

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_45
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5e

    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_5e
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e6

    sub-float/2addr v0, v3

    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_6a

    const/4 v0, 0x0

    :cond_6a
    :goto_6a
    const/4 v2, 0x0

    :goto_6b
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_a8

    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_fa

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v7, v6

    cmpl-float v7, v7, v3

    if-lez v7, :cond_8d

    float-to-int v6, v3

    :cond_8d
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    float-to-int v8, v0

    iget v9, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v10, v6

    add-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    int-to-float v7, v6

    add-float/2addr v0, v7

    int-to-float v7, v6

    sub-float/2addr v3, v7

    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_fa

    :cond_a8
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v7

    if-eqz v7, :cond_fe

    const/4 v2, 0x0

    :goto_af
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_fe

    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_e3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    float-to-int v8, v0

    iget v9, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v0, v7

    :cond_e3
    add-int/lit8 v2, v2, 0x1

    goto :goto_af

    :cond_e6
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_f5

    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6a

    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v3, v7

    goto/16 :goto_6a

    :cond_f5
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    sub-float/2addr v0, v7

    goto/16 :goto_6a

    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6b

    :cond_fe
    sub-int v7, p4, p2

    sub-int v8, p5, p3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v7, v8}, Landroid/support/v17/leanback/widget/BaseCardView;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 18

    const/4 v12, 0x0

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/4 v12, 0x0

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->findChildrenViews()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v4, 0x0

    :goto_14
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_4b

    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_48

    invoke-virtual {p0, v9, v11, v11}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v8, v12

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v10, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_4b
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/BaseCardView;->setPivotX(F)V

    div-int/lit8 v12, v8, 0x2

    int-to-float v12, v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/BaseCardView;->setPivotY(F)V

    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v12

    if-eqz v12, :cond_ca

    const/4 v4, 0x0

    :goto_68
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_98

    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_95

    invoke-virtual {p0, v7, v1, v11}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_8d

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v6, v12

    :cond_8d
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v10, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    :cond_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    :cond_98
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v12

    if-eqz v12, :cond_ca

    const/4 v4, 0x0

    :goto_9f
    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_ca

    iget-object v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_c7

    invoke-virtual {p0, v3, v1, v11}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v2, v12

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v10, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    :cond_c7
    add-int/lit8 v4, v4, 0x1

    goto :goto_9f

    :cond_ca
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v12

    if-eqz v12, :cond_112

    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_112

    const/4 v5, 0x1

    :goto_d6
    int-to-float v13, v8

    if-eqz v5, :cond_114

    int-to-float v12, v6

    iget v14, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v12, v14

    :goto_dd
    add-float/2addr v12, v13

    int-to-float v13, v2

    add-float/2addr v13, v12

    if-eqz v5, :cond_116

    const/4 v12, 0x0

    :goto_e3
    sub-float v12, v13, v12

    float-to-int v12, v12

    iput v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingRight()I

    move-result v13

    add-int/2addr v12, v13

    move/from16 v0, p1

    invoke-static {v12, v0, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v12

    iget v13, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingTop()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    shl-int/lit8 v14, v10, 0x10

    move/from16 v0, p2

    invoke-static {v13, v0, v14}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v13

    invoke-virtual {p0, v12, v13}, Landroid/support/v17/leanback/widget/BaseCardView;->setMeasuredDimension(II)V

    return-void

    :cond_112
    const/4 v5, 0x0

    goto :goto_d6

    :cond_114
    int-to-float v12, v6

    goto :goto_dd

    :cond_116
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    goto :goto_e3
.end method

.method public setActivated(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    if-eq p1, v0, :cond_10

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->applyActiveState(Z)V

    :cond_10
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_10

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->applySelectedState(Z)V

    :cond_10
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
