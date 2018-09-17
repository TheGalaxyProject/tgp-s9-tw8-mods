.class Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect$2;
.super Ljava/lang/Object;
.source "SeslEdgeEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    # setter for: Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->mOnReleaseCalled:Z
    invoke-static {v0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->access$002(Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;Z)Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    # getter for: Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->mTempDeltaDistance:F
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->access$100(Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    # getter for: Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->mTempDisplacement:F
    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->access$200(Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onPull(FF)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect$2;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    # getter for: Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->access$300(Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
