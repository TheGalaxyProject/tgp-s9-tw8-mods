.class Landroid/support/v17/leanback/app/PlaybackFragment$11;
.super Ljava/lang/Object;
.source "PlaybackFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackFragment;->loadOtherRowAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v4}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v4}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_48

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v4}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v4}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_45

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment$11;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget v4, v4, Landroid/support/v17/leanback/app/PlaybackFragment;->mAnimationTranslateY:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_48
    return-void
.end method
