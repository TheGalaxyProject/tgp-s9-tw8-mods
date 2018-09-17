.class Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DispatchEventLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

.field final synthetic val$a:Landroid/animation/ValueAnimator;

.field final synthetic val$markCompleteOnEnd:Z

.field final synthetic val$ul:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$5;->val$a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$5;->val$ul:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$5;->val$a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$5;->val$markCompleteOnEnd:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$5;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->markCompleted()V

    :cond_15
    return-void
.end method
