.class Lcom/android/systemui/infinity/fractal/ElementAnimator$2;
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

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get3(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v1, v4

    if-lez v4, :cond_19

    cmpl-float v4, v1, v7

    if-lez v4, :cond_36

    :cond_19
    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4, v8}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-set2(Lcom/android/systemui/infinity/fractal/ElementAnimator;Z)Z

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4, v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-set3(Lcom/android/systemui/infinity/fractal/ElementAnimator;F)F

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get4(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get5(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    :goto_35
    return-void

    :cond_36
    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-wrap0(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get1(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_53

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    iget-object v5, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get2(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Lcom/android/systemui/infinity/fractal/ElementData;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    invoke-static {v4, v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-set0(Lcom/android/systemui/infinity/fractal/ElementAnimator;F)F

    :cond_53
    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get1(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v5}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get2(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Lcom/android/systemui/infinity/fractal/ElementData;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    sub-float v0, v4, v5

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get3(Lcom/android/systemui/infinity/fractal/ElementAnimator;)F

    move-result v4

    const/high16 v5, -0x3d380000    # -100.0f

    div-float/2addr v5, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v5, v6

    mul-float v3, v4, v5

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get2(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Lcom/android/systemui/infinity/fractal/ElementData;

    move-result-object v4

    iget v5, v4, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    add-float/2addr v5, v3

    iput v5, v4, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get6(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->requestRender()V

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$2;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v4}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-get4(Lcom/android/systemui/infinity/fractal/ElementAnimator;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_35
.end method
