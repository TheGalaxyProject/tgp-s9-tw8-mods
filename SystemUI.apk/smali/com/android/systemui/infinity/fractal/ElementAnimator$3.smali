.class Lcom/android/systemui/infinity/fractal/ElementAnimator$3;
.super Landroid/os/Handler;
.source "ElementAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/fractal/ElementAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/fractal/ElementAnimator;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$3;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$3;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get3(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$3;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get3(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_30

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$3;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get3(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-set3(Lcom/android/systemui/infinity/fractal/ElementAnimator;F)F

    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$3;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get5(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_30
    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$3;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get3(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_23

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$3;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get3(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-set3(Lcom/android/systemui/infinity/fractal/ElementAnimator;F)F

    goto :goto_23
.end method
