.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;
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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-set2(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get12(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-wrap5(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    :cond_d
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-set2(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z

    return-void
.end method
