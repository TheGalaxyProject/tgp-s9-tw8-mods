.class Lcom/android/settings/widget/DotsPageIndicator$5;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator;->createJoiningAnimator(IJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;

.field final synthetic val$leftJoiningDot:I


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iput p2, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->val$leftJoiningDot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator$5;->val$leftJoiningDot:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/DotsPageIndicator;->-wrap3(Lcom/android/settings/widget/DotsPageIndicator;IF)V

    return-void
.end method
