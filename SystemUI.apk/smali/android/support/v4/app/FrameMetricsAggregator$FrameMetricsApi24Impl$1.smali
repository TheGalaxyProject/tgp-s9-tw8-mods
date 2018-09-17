.class Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .registers 13

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get1(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get0(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    aget-object v1, v1, v4

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get1(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get0(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {p2, v5}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_3d
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get1(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_58

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get0(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {p2, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_58
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get1(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get0(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {p2, v8}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_73
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get1(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8f

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get0(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    aget-object v1, v1, v8

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_8f
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get1(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_ac

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get0(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_ac
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get1(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c9

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get0(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_c9
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get1(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e5

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get0(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {p2, v4}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_e5
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get1(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_102

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$1:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->-get0(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {p2, v6}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    :cond_102
    return-void
.end method
