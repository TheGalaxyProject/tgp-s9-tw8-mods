.class Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;
.super Ljava/lang/Object;
.source "ZenScheduleRepeatButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;I)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    :goto_46
    return-void

    :cond_47
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->invalidate()V

    goto :goto_46
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_19

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get0(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    :goto_59
    return-void

    :cond_5a
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->invalidate()V

    goto :goto_59
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->val$index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get4(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    return-void
.end method
