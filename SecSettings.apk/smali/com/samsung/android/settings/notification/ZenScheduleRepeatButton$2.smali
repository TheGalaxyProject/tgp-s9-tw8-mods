.class Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;
.super Ljava/lang/Object;
.source "ZenScheduleRepeatButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$isShowingAnim:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;IZ)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->val$index:I

    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->val$isShowingAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->val$index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1c

    :cond_18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->val$isShowingAnim:Z

    if-eq v0, v1, :cond_50

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->val$index:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    :cond_50
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;->val$index:I

    aget-object v1, v0, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setSelectionRatio(F)V

    return-void
.end method
