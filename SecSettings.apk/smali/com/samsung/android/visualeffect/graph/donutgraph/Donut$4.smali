.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;
.super Ljava/lang/Object;
.source "Donut.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get11(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get1(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-set5(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get19(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1c
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-wrap4(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get11(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-set1(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z

    :cond_13
    return-void
.end method
