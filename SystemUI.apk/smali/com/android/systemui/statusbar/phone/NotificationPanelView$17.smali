.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$expand:Z

.field final synthetic val$onFinishRunnable:Ljava/lang/Runnable;

.field final synthetic val$target:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;ZF)V
    .registers 5

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->val$onFinishRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->val$expand:Z

    iput p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->val$target:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->val$onFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_16
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->val$expand:Z

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->val$target:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V

    :cond_2f
    return-void
.end method
