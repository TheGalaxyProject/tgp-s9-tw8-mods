.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;
.super Ljava/lang/Object;
.source "SeslFragmentTransitionCompat21.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/Transition;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .registers 7

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$enterTransition:Landroid/transition/Transition;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$exitTransition:Landroid/transition/Transition;

    iput-object p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$sharedElementTransition:Landroid/transition/Transition;

    iput-object p6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$enterTransition:Landroid/transition/Transition;

    if-nez v0, :cond_e

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$exitTransition:Landroid/transition/Transition;

    if-nez v0, :cond_16

    :goto_9
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$sharedElementTransition:Landroid/transition/Transition;

    if-nez v0, :cond_1e

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$enterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$enteringViews:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$exitTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$exitingViews:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_9

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$5;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_d
.end method
