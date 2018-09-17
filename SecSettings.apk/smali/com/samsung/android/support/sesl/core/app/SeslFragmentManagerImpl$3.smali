.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeslFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->animateRemoveFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .registers 5

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    if-nez v0, :cond_f

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_17

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getStateAfterAnimating()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    goto :goto_e
.end method
