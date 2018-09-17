.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;
.super Ljava/lang/Object;
.source "SeslFragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;

.field final synthetic val$epicenterView:Landroid/view/View;

.field final synthetic val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$inSharedElements:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

.field final synthetic val$outFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$outFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-boolean p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$inIsPop:Z

    iput-object p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$inSharedElements:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    iput-object p5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$epicenterView:Landroid/view/View;

    iput-object p6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$outFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$inIsPop:Z

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$inSharedElements:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    const/4 v4, 0x0

    # invokes: Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->callSharedElementStartEnd(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->access$200(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$epicenterView:Landroid/view/View;

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$epicenterView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_10
.end method
