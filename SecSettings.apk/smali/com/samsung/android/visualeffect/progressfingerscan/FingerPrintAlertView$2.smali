.class Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;
.super Ljava/lang/Object;
.source "FingerPrintAlertView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setAnimationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    # getter for: Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->access$300(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    # getter for: Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mImgViewAlertFingerPrint02:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->access$400(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    # getter for: Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->mAnimationSetAlertFinger02:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->access$300(Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
