.class Lcom/android/systemui/infinity/fractal/ElementAnimator$1;
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

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$1;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v0, 0x1

    const-string/jumbo v1, "InfinityWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Animation type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$1;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-wrap3(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$1;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-wrap1(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V

    goto :goto_26

    :cond_32
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3d

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$1;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-static {v0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->-wrap2(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V

    goto :goto_26

    :cond_3d
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementAnimator$1;->this$0:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v0, :cond_4e

    :goto_4a
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->changeModeInner(IZ)V

    goto :goto_26

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4a
.end method
